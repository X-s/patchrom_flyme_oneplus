.class Lcom/oneplus/gallery2/OPGalleryActivity$28;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->closeEntryTabs(Ljava/lang/Float;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$28;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 817
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$28;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$28;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery2/OPGalleryActivity$28;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabTranslationYDistance:I
    invoke-static {v2}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2600(Lcom/oneplus/gallery2/OPGalleryActivity;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/oneplus/gallery2/OPGalleryActivity$28;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTitleAndTabContainer:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3400(Lcom/oneplus/gallery2/OPGalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 822
    :cond_0
    return-void
.end method
