use <scad-utils/transformations.scad>
use <scad-utils/shapes.scad>
use <list-comprehension-demos/skin.scad>
use <threadlib/threadlib.scad>

fn=32;

base_height=2;
step_size=3;

hose_inner_diameter=12.8;
hose_outer_diameter=16;

difference(){
  skin([
         transform(translation([0,0,0]), circle($fn=fn,r=hose_outer_diameter/2)),
         transform(translation([0,0,base_height]), circle($fn=fn,r=hose_outer_diameter/2)),
         transform(translation([0,0,base_height]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 1]), circle($fn=fn,r=hose_inner_diameter/2)),
         transform(translation([0,0,base_height + step_size * 1]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 2]), circle($fn=fn,r=hose_inner_diameter/2)),
         transform(translation([0,0,base_height + step_size * 2]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 3]), circle($fn=fn,r=hose_inner_diameter/2)),
         transform(translation([0,0,base_height + step_size * 3]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 4]), circle($fn=fn,r=hose_inner_diameter/2)),
         transform(translation([0,0,base_height + step_size * 4]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 5]), circle($fn=fn,r=hose_inner_diameter/2)),
         transform(translation([0,0,base_height + step_size * 5]), circle($fn=fn,r=hose_inner_diameter/2+1)),
         transform(translation([0,0,base_height + step_size * 6]), circle($fn=fn,r=hose_inner_diameter/2)),
         ]);
  tap("M8x0.8", turns=25);
}
