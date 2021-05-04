package cn.fq.admin.service;

import cn.fq.admin.entity.SysUser;
import com.baomidou.mybatisplus.extension.service.IService;


/**
 * <p>
 *
 * </p>
 *
 * @author fq
 * @since 2021-05-04
 */
public interface SysUserService extends IService<SysUser> {

	SysUser getByUsername(String username);

	String getUserAuthorityInfo(Long userId);

	void clearUserAuthorityInfo(String username);

	void clearUserAuthorityInfoByRoleId(Long roleId);

	void clearUserAuthorityInfoByMenuId(Long menuId);


}
