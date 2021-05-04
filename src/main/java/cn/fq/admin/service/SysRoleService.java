package cn.fq.admin.service;

import cn.fq.admin.entity.SysRole;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author fq
 * @since 2021-05-04
 */
public interface SysRoleService extends IService<SysRole> {

	List<SysRole> listRolesByUserId(Long userId);

}
