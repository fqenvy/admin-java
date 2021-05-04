package cn.fq.admin.mapper;


import cn.fq.admin.entity.SysUser;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *
 * </p>
 *
 * @author fq
 * @since 2021-05-04
 */
@Repository
public interface SysUserMapper extends BaseMapper<SysUser> {

	List<Long> getNavMenuIds(Long userId);

	List<SysUser> listByMenuId(Long menuId);
}
