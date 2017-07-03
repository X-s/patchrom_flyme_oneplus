.class Lcom/oneplus/gallery2/OPGalleryActivity$22;
.super Ljava/lang/Object;
.source "OPGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/OPGalleryActivity;
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
    .line 372
    iput-object p1, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->CLOSING:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    sget-object v1, Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;->INVISIBLE:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryTabsState:Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2402(Lcom/oneplus/gallery2/OPGalleryActivity;Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;)Lcom/oneplus/gallery2/OPGalleryActivity$EntryTabsState;

    .line 379
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    const/4 v1, 0x0

    # setter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_EntryPageTabsAnimator:Landroid/view/ViewPropertyAnimator;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$2502(Lcom/oneplus/gallery2/OPGalleryActivity;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 381
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/oneplus/gallery2/OPGalleryActivity$22;->this$0:Lcom/oneplus/gallery2/OPGalleryActivity;

    # getter for: Lcom/oneplus/gallery2/OPGalleryActivity;->m_DefaultGridViewFragment:Lcom/oneplus/gallery2/GridViewFragment;
    invoke-static {v0}, Lcom/oneplus/gallery2/OPGalleryActivity;->access$400(Lcom/oneplus/gallery2/OPGalleryActivity;)Lcom/oneplus/gallery2/GridViewFragment;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GridViewFragment;->PROP_GROUP_HEADER_PADDING_TOP:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/GridViewFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 384
    :cond_0
    return-void
.end method
