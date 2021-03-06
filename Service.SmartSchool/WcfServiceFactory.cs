using BAL.SmartSchool;
using BAL.SmartSchool.Interface;
using Contract.SmartSchool;
using DAL.SmartSchool;
using DAL.SmartSchool.Interface;
using Microsoft.Practices.Unity;
using Unity.Wcf;

namespace Service.SmartSchool
{
	public class WcfServiceFactory : UnityServiceHostFactory
    {
        protected override void ConfigureContainer(IUnityContainer container)
        {            
            container.RegisterType<IUser, User>();
            container.RegisterType<IUserRepository, UserRepository>();
            container.RegisterType<IUserService, UserService>();
        }
    }    
}