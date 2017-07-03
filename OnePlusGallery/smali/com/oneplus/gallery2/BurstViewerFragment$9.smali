.class Lcom/oneplus/gallery2/BurstViewerFragment$9;
.super Ljava/lang/Object;
.source "BurstViewerFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/BurstViewerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/BurstViewerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/BurstViewerFragment;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 302
    .local v0, "newValue":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z
    invoke-static {v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1500(Lcom/oneplus/gallery2/BurstViewerFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    sget-object v2, Lcom/oneplus/base/BaseFragment;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/oneplus/base/BaseFragment$State;->RUNNING:Lcom/oneplus/base/BaseFragment$State;

    if-ne v1, v2, :cond_0

    .line 303
    iget-object v1, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    # getter for: Lcom/oneplus/gallery2/BurstViewerFragment;->m_IsToolbarVisible:Z
    invoke-static {v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->access$1500(Lcom/oneplus/gallery2/BurstViewerFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/gallery2/BurstViewerFragment;->setSystemUiVisibility(Z)V

    .line 306
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/oneplus/gallery2/BurstViewerFragment$9;->this$0:Lcom/oneplus/gallery2/BurstViewerFragment;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/oneplus/gallery2/BurstViewerFragment;->onNavigationBarVisibilityChanged(Z)V

    goto :goto_0
.end method
