.class Lcom/android/settings_ex/search/Index$3;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/search/Index;

.field final synthetic val$data:Landroid/provider/SearchIndexableData;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/search/Index;Landroid/provider/SearchIndexableData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/search/Index;
    .param p2, "val$data"    # Landroid/provider/SearchIndexableData;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings_ex/search/Index$3;->this$0:Lcom/android/settings_ex/search/Index;

    iput-object p2, p0, Lcom/android/settings_ex/search/Index$3;->val$data:Landroid/provider/SearchIndexableData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/settings_ex/search/Index$3;->this$0:Lcom/android/settings_ex/search/Index;

    iget-object v1, p0, Lcom/android/settings_ex/search/Index$3;->val$data:Landroid/provider/SearchIndexableData;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    .line 519
    iget-object v0, p0, Lcom/android/settings_ex/search/Index$3;->this$0:Lcom/android/settings_ex/search/Index;

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->-get2(Lcom/android/settings_ex/search/Index;)Lcom/android/settings_ex/search/Index$UpdateData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings_ex/search/Index$UpdateData;->forceUpdate:Z

    .line 520
    iget-object v0, p0, Lcom/android/settings_ex/search/Index$3;->this$0:Lcom/android/settings_ex/search/Index;

    invoke-static {v0}, Lcom/android/settings_ex/search/Index;->-wrap5(Lcom/android/settings_ex/search/Index;)V

    .line 517
    return-void
.end method
