.class Lcom/android/settings_ex/bluetooth/DockService$2;
.super Ljava/lang/Object;
.source "DockService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/DockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/DockService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/DockService;)V
    .locals 0

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/DockService$2;->this$0:Lcom/android/settings_ex/bluetooth/DockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 583
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/DockService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "DockService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DockService$2;->this$0:Lcom/android/settings_ex/bluetooth/DockService;

    # getter for: Lcom/android/settings_ex/bluetooth/DockService;->mCheckedItems:[Z
    invoke-static {v0}, Lcom/android/settings_ex/bluetooth/DockService;->access$300(Lcom/android/settings_ex/bluetooth/DockService;)[Z

    move-result-object v0

    aput-boolean p3, v0, p2

    .line 587
    return-void
.end method
