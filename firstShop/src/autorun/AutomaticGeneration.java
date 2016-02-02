package autorun;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

/**
 * @title:
 * @descrption: 自动的逆向生成PO,和papper
 * @team:bs
 * @className automaticGeneration.java
 * @author 吴圣
 * @createDate 创建时间：2015-9-28 上午9:13:07
 * 
 */
public class AutomaticGeneration {
	
	public void generator() throws Exception{
		List<String> warnings = new ArrayList<String>();
		   boolean overwrite = true;
		   File configFile = new File("generatorConfig.xml");
		   ConfigurationParser cp = new ConfigurationParser(warnings);
		   Configuration config = cp.parseConfiguration(configFile);
		   DefaultShellCallback callback = new DefaultShellCallback(overwrite);
		   MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, callback, warnings);
		   myBatisGenerator.generate(null);
	}
	
	public static void main(String[] args) throws Exception {
		try{
			AutomaticGeneration automaticGeneration=new AutomaticGeneration();
			automaticGeneration.generator();
		}catch (Exception e){
			e.printStackTrace();
		}
	}
	
}
