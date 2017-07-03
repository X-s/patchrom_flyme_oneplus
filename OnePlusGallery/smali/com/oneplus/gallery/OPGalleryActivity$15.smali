.class Lcom/oneplus/gallery/OPGalleryActivity$15;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/OPGalleryActivity;
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
    .line 298
    iput-object p1, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1700(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    sget-object v1, Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    # setter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1702(Lcom/oneplus/gallery/OPGalleryActivity;Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;)Lcom/oneplus/gallery/OPGalleryActivity$EntryTabsState;

    .line 305
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/oneplus/gallery/OPGalleryActivity;->access$1802(Lcom/oneplus/gallery/OPGalleryActivity;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 307
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/oneplus/gallery/OPGalleryActivity$15;->this$0:Lcom/oneplus/gallery/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery/OPGalleryActivity;->access$200(Lcom/oneplus/gallery/OPGalleryActivity;)Lcom/oneplus/gallery/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 310
    :cond_0
    return-void
.end method
