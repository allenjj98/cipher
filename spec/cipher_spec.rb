require './cipher'

describe Cipher do
    describe '#shift_string' do
        it "returns a modified string" do
            cipher = Cipher.new
            expect(cipher.shift_string("hello", 4)).to(eql("lipps"))
        end


        it "returns a modified string that accounts for spaces" do
            cipher = Cipher.new
            expect(cipher.shift_string("this is a test", 5)).to(eql("ymnx nx f yjxy"))
        end

        it "successfully wraps from z to a" do
            cipher = Cipher.new
            expect(cipher.shift_string("zoo", 2)).to(eql("bqq"))
        end

        it "it does not modify puncuation" do 
            cipher = Cipher.new
            expect(cipher.shift_string("hello, what is your name?", 6)).to(eql("nkrru, cngz oy euax tgsk?"))
        end

        it "successfully modifies longer and more complex sentences" do
            cipher = Cipher.new
            expect(cipher.shift_string("Mr. and Mrs. Dursley of number four, Privet Drive, were proud to say that they were perfectly normal, thank you very much.", 3)).to(eql("pu. dqg puv. gxuvohb ri qxpehu irxu, sulyhw gulyh, zhuh surxg wr vdb wkdw wkhb zhuh shuihfwob qrupdo, wkdqn brx yhub pxfk."))
        end

    end

end