.class Lcom/android/server/policy/ui/OpGlobalActionEntry$6;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->startAnimateBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

.field final synthetic val$bg:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    iput-object p2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;->val$bg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v4, 0x43c80000    # 400.0f

    .line 271
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 272
    .local v1, "animatorValue":I
    int-to-float v2, v1

    sub-float v2, v4, v2

    div-float/2addr v2, v4

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v0, v2, v3

    .line 273
    .local v0, "alpha":F
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;->val$bg:Landroid/graphics/drawable/Drawable;

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 275
    iget-object v2, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$6;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mActionConfirmLabel:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$500(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Landroid/widget/TextView;

    move-result-object v2

    int-to-float v3, v1

    sub-float v3, v4, v3

    div-float/2addr v3, v4

    const v4, 0x3f5eb852    # 0.87f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 276
    return-void
.end method
