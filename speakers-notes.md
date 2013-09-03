# _Prerequisites_
1. Webpage open to `https://github.com/cloudfoundry/java-buildpack/`
1. Webpage open to `https://console.run.pivotal.io/organizations/066210ab-1e72-4561-b6b5-1032753adde0/spaces/6b4f9121-34a9-4634-984c-ad0e004133bd`
1. Webpage open to `http://ben-web-application.cfapps.io` (fail initially)
1. Existing New Relic Service
1. Built `java-test-applications/web-application`

---

# Automatic Container Choice
1. Push web application using `cf push`
1. Describe what is being downloaded
1. Describe the repository index and being aggressively up-to-date
1. Show that the application is now running using `http://ben-web-application.cfapps.io`

# Zero-touch Services
1. Bind New Relic service using `cf bind-service`
1. Re-stage application using `cf push`
1. Describe the New Relic Agent that is being downloaded
1. Describe that the caching means that the JRE isn't being downloaded again
1. Show that New Relic is collecting using `http://ben-web-application.cfapps.io` and `http://console.run.pivotal.io`

# Configuring the Buildpack
1. Fork the buildpack to `nebhale`
1. Change the `version` value in `config/openjdk.yml` to `1.7.0_17`
1. Restage application using `cf push --reset`
1. Describe the version of OpenJDK that is being downloaded

# Extending the Buildpack
1. Add the `staging_timestamp.rb` file to the `lib/java_buildpack/framework` directory
1. Change the `frameworks` value in `config/components.yml` to add  `JavaBuildpack::Framework::StagingTimestamp`
1. Re-stage application using `cf push`
1. Show that the application now has a `-Dstaging.timestamp=` system property
