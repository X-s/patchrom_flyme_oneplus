.class Lcom/oneplus/settings/ui/OPTimerDialog$1;
.super Ljava/lang/Object;
.source "OPTimerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPTimerDialog;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

.field final synthetic val$listener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPTimerDialog;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->val$listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$1;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    # getter for: Lcom/oneplus/settings/ui/OPTimerDialog;->mDialog:Lcom/oneplus/app/OPAlertDialog;
    invoke-static {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$000(Lcom/oneplus/settings/ui/OPTimerDialog;)Lcom/oneplus/app/OPAlertDialog;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 75
    return-void
.end method
