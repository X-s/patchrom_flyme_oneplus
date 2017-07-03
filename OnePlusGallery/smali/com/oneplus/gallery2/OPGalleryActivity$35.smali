.class Lcom/oneplus/gallery2/OPGalleryActivity$35;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->updateSnackbarVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;I)V
    .locals 0

    .prologue
    .line 3119
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$35;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    iput p2, p0, Lcom/oneplus/gallery2/OPGalleryActivity$35;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 3123
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 3124
    .local v0, "fraction":F
    iget-object v1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$35;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    sget-object v2, Lcom/oneplus/base/SnackBarHost;->PROP_SNACKBAR_VISIBLE_HEIGHT:Lcom/oneplus/base/PropertyKey;

    iget v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$35;->val$height:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v1, v2, v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$4800(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 3125
    return-void
.end method
