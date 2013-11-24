require 'spec_helper'

describe "MainPages", js: true do
	subject { page }

  describe "Main controller" do
		before { visit root_path }

		it { should have_content("Main controller") }
  end
end
