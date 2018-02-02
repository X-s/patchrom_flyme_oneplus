.class Lcom/oneplus/drawable/RotateAnimationDrawable$1;
.super Ljava/lang/Object;
.source "RotateAnimationDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/drawable/RotateAnimationDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/drawable/RotateAnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/drawable/RotateAnimationDrawable;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 31
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get2(Lcom/oneplus/drawable/RotateAnimationDrawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get0(Lcom/oneplus/drawable/RotateAnimationDrawable;)F

    move-result v1

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-set0(Lcom/oneplus/drawable/RotateAnimationDrawable;F)F

    .line 34
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get0(Lcom/oneplus/drawable/RotateAnimationDrawable;)F

    move-result v0

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0, v4}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-set0(Lcom/oneplus/drawable/RotateAnimationDrawable;F)F

    .line 37
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-set1(Lcom/oneplus/drawable/RotateAnimationDrawable;Z)Z

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-virtual {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->invalidateSelf()V

    .line 29
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x21

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lcom/oneplus/drawable/RotateAnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    iget-object v1, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v1}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get0(Lcom/oneplus/drawable/RotateAnimationDrawable;)F

    move-result v1

    iget-object v2, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v2}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get1(Lcom/oneplus/drawable/RotateAnimationDrawable;)J

    move-result-wide v2

    long-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-set0(Lcom/oneplus/drawable/RotateAnimationDrawable;F)F

    .line 45
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get0(Lcom/oneplus/drawable/RotateAnimationDrawable;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v0, v4}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-set0(Lcom/oneplus/drawable/RotateAnimationDrawable;F)F

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/oneplus/drawable/RotateAnimationDrawable$1;->this$0:Lcom/oneplus/drawable/RotateAnimationDrawable;

    invoke-static {v1}, Lcom/oneplus/drawable/RotateAnimationDrawable;->-get3(Lcom/oneplus/drawable/RotateAnimationDrawable;)J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v0, p0, v2, v3}, Lcom/oneplus/drawable/RotateAnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
