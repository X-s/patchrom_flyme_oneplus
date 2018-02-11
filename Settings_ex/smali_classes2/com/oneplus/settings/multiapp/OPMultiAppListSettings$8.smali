.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->showWarnigDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$8;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-set0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    .line 320
    return-void
.end method
