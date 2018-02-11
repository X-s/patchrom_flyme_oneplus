.class Lcom/android/settings_ex/RemoteBugreportActivity$3;
.super Ljava/lang/Object;
.source "RemoteBugreportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RemoteBugreportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RemoteBugreportActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RemoteBugreportActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/RemoteBugreportActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings_ex/RemoteBugreportActivity$3;->this$0:Lcom/android/settings_ex/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_ex/RemoteBugreportActivity$3;->this$0:Lcom/android/settings_ex/RemoteBugreportActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/RemoteBugreportActivity;->finish()V

    .line 78
    return-void
.end method
