.class Lcom/oneplus/gallery2/MediaSetListFragment$17;
.super Ljava/lang/Object;
.source "MediaSetListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/MediaSetListFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetListFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetListFragment;)V
    .locals 0

    .prologue
    .line 1346
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetListFragment$17;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$17;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    # getter for: Lcom/oneplus/gallery2/MediaSetListFragment;->m_Toolbar:Landroid/widget/Toolbar;
    invoke-static {v0}, Lcom/oneplus/gallery2/MediaSetListFragment;->access$4700(Lcom/oneplus/gallery2/MediaSetListFragment;)Landroid/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetListFragment$17;->this$0:Lcom/oneplus/gallery2/MediaSetListFragment;

    sget-object v1, Lcom/oneplus/gallery2/MediaSetListFragment;->PROP_IS_SELECTION_MODE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery2/MediaSetListFragment;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1351
    return-void
.end method
