.class Lcom/oneplus/tuner/ShareActivity$2;
.super Ljava/lang/Object;
.source "ShareActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/ShareActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/ShareActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/ShareActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/tuner/ShareActivity$2;->this$0:Lcom/oneplus/tuner/ShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity$2;->this$0:Lcom/oneplus/tuner/ShareActivity;

    const-class v2, Lcom/oneplus/tuner/OnePlusHeadSetActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "is_from_shareactivity_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/oneplus/tuner/ShareActivity$2;->this$0:Lcom/oneplus/tuner/ShareActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/tuner/ShareActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method
