.class Lcom/oneplus/settings/apploader/OPApplicationLoader$5;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;ILandroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .param p2, "val$type"    # I
    .param p3, "val$handler"    # Landroid/os/Handler;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iput p2, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->val$type:I

    iput-object p3, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPreExecute()V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-set1(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z

    .line 164
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->val$type:I

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->loadAppListByType(I)V

    .line 165
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-set1(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPostExecute()V

    .line 167
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->val$handler:Landroid/os/Handler;

    iget v1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$5;->val$type:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 161
    return-void
.end method
