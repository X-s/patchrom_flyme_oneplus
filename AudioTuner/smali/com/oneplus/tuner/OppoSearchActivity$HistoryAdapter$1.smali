.class Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;
.super Ljava/lang/Object;
.source "OppoSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

.field final synthetic val$txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;->this$1:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    iput-object p2, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;->val$txt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;->this$1:Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;

    iget-object v0, v0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter;->this$0:Lcom/oneplus/tuner/OppoSearchActivity;

    iget-object v1, p0, Lcom/oneplus/tuner/OppoSearchActivity$HistoryAdapter$1;->val$txt:Ljava/lang/String;

    # invokes: Lcom/oneplus/tuner/OppoSearchActivity;->deleteHistoryItem(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/oneplus/tuner/OppoSearchActivity;->access$800(Lcom/oneplus/tuner/OppoSearchActivity;Ljava/lang/String;)V

    .line 259
    return-void
.end method
