class RepoController < ApplicationController

	def index
	end

	def showpoprepo
		#github = Github.new 
		#response=github.repos.list :org => 'google' sort: 'forks_count' 
		#@repos=response.body
		#repos = Github::Client::Repos.new
		$orgname=params[:orgname]

		$response=find_pop_repo($orgname)
		@repos_items=$response["items"]
	end

	def topcommittees1
		@committee={}
		@commit_count={}
		#puts $reponame
		response=find_pop_repo($orgname)
		@reponame=response["items"][0]["name"]
		topcommittees(0,@committee,@commit_count,response)
	end

	def topcommittees2
		@committee={}
		@commit_count={}
		#puts $reponame
		response=find_pop_repo($orgname)
		@reponame=response["items"][1]["name"]
		topcommittees(1,@committee,@commit_count,response)
	end

	def topcommittees3
		@committee={}
		@commit_count={}
		#puts $reponame
		response=find_pop_repo($orgname)
		@reponame=response["items"][2]["name"]
		topcommittees(2,@committee,@commit_count,response)
	end

	def topcommittees4
		@committee={}
		@commit_count={}
		#puts $reponame
		response=find_pop_repo($orgname)
		@reponame=response["items"][3]["name"]
		topcommittees(3,@committee,@commit_count,response)
	end

	def topcommittees5
		@committee={}
		@commit_count={}
		#puts $reponame
		#response=find_pop_repo($orgname)
		@reponame=$response["items"][4]["name"]
		topcommittees(4,@committee,@commit_count,$response)
	end

	private
	def find_pop_repo(orgname)
		reporesponse=HTTParty.get('https://api.github.com/search/repositories?q=user:'+orgname+'&sort=forks&order=desc')
		response=JSON.parse reporesponse.body
		return response
	end

	def topcommittees(value,committee,commit_count,response)
		reporank=value
		#response=find_pop_repo($reponame)
		commit=HTTParty.get(response["items"][reporank]["contributors_url"])
		readablecommit=JSON.parse commit.body
		for j in 0..2
			committee[j]=readablecommit[j]["login"]
			commit_count[j]=readablecommit[j]["contributions"]
		end
	end


end
