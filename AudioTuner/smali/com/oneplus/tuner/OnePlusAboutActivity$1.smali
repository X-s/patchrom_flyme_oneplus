.class Lcom/oneplus/tuner/OnePlusAboutActivity$1;
.super Ljava/lang/Object;
.source "OnePlusAboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusAboutActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusAboutActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusAboutActivity;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusAboutActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusAboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusAboutActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusAboutActivity;

    const-class v2, Lcom/oneplus/tuner/OnePlusUserAgreementActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusAboutActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusAboutActivity;

    invoke-virtual {v1, v0}, Lcom/oneplus/tuner/OnePlusAboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 31
    return-void
.end method
