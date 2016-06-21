.class Lcom/android/systemui_ex/qs/QSDetailItems$1;
.super Ljava/lang/Object;
.source "QSDetailItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/qs/QSDetailItems;->bind(Lcom/android/systemui_ex/qs/QSDetailItems$Item;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/qs/QSDetailItems;

.field final synthetic val$item:Lcom/android/systemui_ex/qs/QSDetailItems$Item;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/qs/QSDetailItems;Lcom/android/systemui_ex/qs/QSDetailItems$Item;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui_ex/qs/QSDetailItems$1;->this$0:Lcom/android/systemui_ex/qs/QSDetailItems;

    iput-object p2, p0, Lcom/android/systemui_ex/qs/QSDetailItems$1;->val$item:Lcom/android/systemui_ex/qs/QSDetailItems$Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSDetailItems$1;->this$0:Lcom/android/systemui_ex/qs/QSDetailItems;

    # getter for: Lcom/android/systemui_ex/qs/QSDetailItems;->mCallback:Lcom/android/systemui_ex/qs/QSDetailItems$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSDetailItems;->access$000(Lcom/android/systemui_ex/qs/QSDetailItems;)Lcom/android/systemui_ex/qs/QSDetailItems$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui_ex/qs/QSDetailItems$1;->this$0:Lcom/android/systemui_ex/qs/QSDetailItems;

    # getter for: Lcom/android/systemui_ex/qs/QSDetailItems;->mCallback:Lcom/android/systemui_ex/qs/QSDetailItems$Callback;
    invoke-static {v0}, Lcom/android/systemui_ex/qs/QSDetailItems;->access$000(Lcom/android/systemui_ex/qs/QSDetailItems;)Lcom/android/systemui_ex/qs/QSDetailItems$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/qs/QSDetailItems$1;->val$item:Lcom/android/systemui_ex/qs/QSDetailItems$Item;

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/qs/QSDetailItems$Callback;->onDetailItemClick(Lcom/android/systemui_ex/qs/QSDetailItems$Item;)V

    .line 204
    :cond_0
    return-void
.end method
