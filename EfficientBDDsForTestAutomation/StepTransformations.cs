using EfficientBDDsForTestAutomation.Data;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;

namespace EfficientBDDsForTestAutomation
{
    [Binding]
    public class StepTransformations
    {
        [StepArgumentTransformation]
        public bool? ToNullableBool(string value)
            => string.IsNullOrWhiteSpace(value) ? (bool?)null : bool.Parse(value);

        [StepArgumentTransformation]
        public User ToUser(Table table)
            => table.CreateInstance<User>();
    }
}
