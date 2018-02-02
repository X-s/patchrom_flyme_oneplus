.class Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7

    .prologue
    const v6, 0x3f4ccccd    # 0.8f

    .line 314
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-boolean v0, v0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D

    move-result-wide v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 322
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    .line 323
    iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v2

    .line 324
    iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F

    move-result v3

    .line 328
    sub-float v0, v6, v0

    .line 329
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    .line 331
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V

    .line 333
    invoke-static {}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$400()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v2

    .line 335
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V

    const/high16 v0, 0x3e800000    # 0.25f

    .line 337
    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    .line 338
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V

    const/high16 v0, 0x43100000    # 144.0f

    .line 340
    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-static {v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$500(Landroid/support/v4/widget/MaterialProgressDrawable;)F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x44340000    # 720.0f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 342
    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V

    .line 344
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;

    iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;

    invoke-static {v0, p1, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->access$200(Landroid/support/v4/widget/MaterialProgressDrawable;FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V

    goto :goto_0
.end method
