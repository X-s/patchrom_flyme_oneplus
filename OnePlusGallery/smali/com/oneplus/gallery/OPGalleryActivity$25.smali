.class Lcom/oneplus/gallery/OPGalleryActivity$25;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/OPGalleryActivity;->setupUI(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/OPGalleryActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/OPGalleryActivity;)V
    .locals 0

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2527
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onEntryViewPagerPageScrolled(IF)V
    invoke-static {v0, p1, p2}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3400(Lcom/oneplus/gallery/OPGalleryActivity;IF)V

    .line 2523
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 2515
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3200(Lcom/oneplus/gallery/OPGalleryActivity;)Ljava/lang/String;

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

    .line 2516
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$25;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # invokes: Lcom/oneplus/gallery/OPGalleryActivity;->onEntryViewPagerPageSelected(I)V
    invoke-static {v0, p1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$3300(Lcom/oneplus/gallery/OPGalleryActivity;I)V

    .line 2517
    return-void
.end method
