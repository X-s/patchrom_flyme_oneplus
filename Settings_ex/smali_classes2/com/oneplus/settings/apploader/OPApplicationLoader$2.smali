.class Lcom/oneplus/settings/apploader/OPApplicationLoader$2;
.super Ljava/lang/Object;
.source "OPApplicationLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/apploader/OPApplicationLoader;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/apploader/OPApplicationLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/apploader/OPApplicationLoader;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-set0(Lcom/oneplus/settings/apploader/OPApplicationLoader;Z)Z

    .line 95
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-get0(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {v0}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-get0(Lcom/oneplus/settings/apploader/OPApplicationLoader;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/apploader/OPApplicationLoader$2;->this$0:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->-set2(Lcom/oneplus/settings/apploader/OPApplicationLoader;J)J

    .line 93
    return-void
.end method
