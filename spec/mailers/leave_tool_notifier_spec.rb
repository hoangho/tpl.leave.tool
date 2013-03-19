require "spec_helper"

describe LeaveToolNotifier do
  describe "request_created" do
    let(:mail) { LeaveToolNotifier.request_created }

    it "renders the headers" do
      mail.subject.should eq("Request created")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "request_processed" do
    let(:mail) { LeaveToolNotifier.request_processed }

    it "renders the headers" do
      mail.subject.should eq("Request processed")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
