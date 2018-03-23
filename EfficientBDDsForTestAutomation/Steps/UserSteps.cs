using EfficientBDDsForTestAutomation.Data;
using TechTalk.SpecFlow;

namespace EfficientBDDsForTestAutomation.Steps
{
    [Binding]
    public sealed class UserSteps
    {
        [When(@"I add new user:")]
        public void WhenIAddNewUser(User user)
        {
            //logic goes here
        }
    }
}
