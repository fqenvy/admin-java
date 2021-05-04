package cn.fq.admin.service;

import cn.fq.admin.common.dto.SysMenuDto;
import cn.fq.admin.entity.SysMenu;
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
public interface SysMenuService extends IService<SysMenu> {

	List<SysMenuDto> getCurrentUserNav();

	List<SysMenu> tree();

}
