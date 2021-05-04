package cn.fq.admin.service.impl;

import cn.fq.admin.entity.SysRole;
import cn.fq.admin.mapper.SysRoleMapper;
import cn.fq.admin.service.SysRoleService;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author fq
 * @since 2021-05-04
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements SysRoleService {

	@Override
	public List<SysRole> listRolesByUserId(Long userId) {

		List<SysRole> sysRoles = this.list(new QueryWrapper<SysRole>()
				.inSql("id", "select role_id from sys_user_role where user_id = " + userId));

		return sysRoles;
	}
}
