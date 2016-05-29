.class Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listPosition:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$view:Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings_ex/deviceinfo/FileItemInfoLayout;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->this$1:Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$listPosition:I

    iput-object p4, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$view:Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$listView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$listPosition:I

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$4;->val$view:Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 319
    :cond_0
    return-void

    .line 317
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
