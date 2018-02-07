.class Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;
.super Landroid/os/Handler;
.source "OPGameAndReadPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/better/OPGameAndReadPickActivity;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 43
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get3(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get2(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get0(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get0(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get2(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v2

    .line 47
    iget v3, p1, Landroid/os/Message;->what:I

    .line 46
    invoke-virtual {v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get3(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get0(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPGameAndReadPickAdapter;->setData(Ljava/util/List;)V

    .line 49
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    const v2, 0x7f110209

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "emptyView":Landroid/view/View;
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get0(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    iget-object v1, p0, Lcom/oneplus/settings/better/OPGameAndReadPickActivity$1;->this$0:Lcom/oneplus/settings/better/OPGameAndReadPickActivity;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGameAndReadPickActivity;->-get1(Lcom/oneplus/settings/better/OPGameAndReadPickActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 40
    .end local v0    # "emptyView":Landroid/view/View;
    :cond_0
    return-void
.end method
