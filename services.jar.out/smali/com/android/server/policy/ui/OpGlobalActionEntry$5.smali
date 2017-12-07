.class Lcom/android/server/policy/ui/OpGlobalActionEntry$5;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->startSelectedAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ui/OpGlobalActionEntry;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v5, 0x3f5eb852    # 0.87f

    const/4 v4, 0x0

    const/high16 v3, 0x43480000    # 200.0f

    .line 238
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 239
    .local v1, "animatorValue":I
    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 241
    int-to-float v2, v1

    sub-float v2, v3, v2

    div-float/2addr v2, v3

    mul-float v0, v2, v5

    .line 242
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get2(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 243
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get1(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 237
    :goto_0
    return-void

    .line 246
    .end local v0    # "alpha":F
    :cond_0
    int-to-float v2, v1

    sub-float/2addr v2, v3

    div-float/2addr v2, v3

    mul-float v0, v2, v5

    .line 247
    .restart local v0    # "alpha":F
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get1(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$5;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-static {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->-get2(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
