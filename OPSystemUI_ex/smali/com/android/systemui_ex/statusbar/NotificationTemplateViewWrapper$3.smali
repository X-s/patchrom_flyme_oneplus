.class Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;
.super Ljava/lang/Object;
.source "NotificationTemplateViewWrapper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;

.field final synthetic val$target:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;->this$0:Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;->val$target:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;->this$0:Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;->updateGrayscaleMatrix(F)V
    invoke-static {v1, v0}, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;->access$200(Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;F)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;->val$target:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper$3;->this$0:Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;

    # getter for: Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;
    invoke-static {v2}, Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;->access$300(Lcom/android/systemui_ex/statusbar/NotificationTemplateViewWrapper;)Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 197
    return-void
.end method
