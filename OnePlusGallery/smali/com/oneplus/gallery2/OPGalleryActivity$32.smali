.class Lcom/oneplus/gallery2/OPGalleryActivity$32;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
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
    .line 2966
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$32;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2982
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$32;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryViewPagerPageScrolled(IF)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$4100(Lcom/oneplus/gallery2/OPGalleryActivity;IF)V

    .line 2978
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$32;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$3900(Lcom/oneplus/gallery2/OPGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected() - position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$32;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery2/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$4000(Lcom/oneplus/gallery2/OPGalleryActivity;I)V

    .line 2972
    return-void
.end method
