using OpenQA.Selenium.Chrome;
using TechTalk.SpecFlow;

namespace EfficientBDDsForTestAutomation
{
    [Binding]
    public sealed class Hooks1
    {
        // For additional details on SpecFlow hooks see http://go.specflow.org/doc-hooks

        [BeforeScenario]
        public void BeforeScenario()
        {
            var driver = new ChromeDriver();
            ScenarioContext.Current.Set(driver, "driver");
        }

        [AfterScenario]
        public void AfterScenario()
        {
            var driver = ScenarioContext.Current.Get<ChromeDriver>("driver");
            driver.Close();
        }

        [BeforeScenario("database")]
        public void SetupDB()
        {
            //db code goes here
        }
    }
}
