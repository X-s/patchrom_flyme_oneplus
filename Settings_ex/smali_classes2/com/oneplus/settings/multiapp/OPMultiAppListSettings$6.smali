.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;
.super Ljava/lang/Object;
.source "OPMultiAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p2, "val$position"    # I

    .prologue
    .line 301
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iput p2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-set0(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    .line 306
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$6;->val$position:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->-wrap4(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;I)V

    .line 304
    return-void
.end method
