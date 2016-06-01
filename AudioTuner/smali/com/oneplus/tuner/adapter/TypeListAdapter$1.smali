.class Lcom/oneplus/tuner/adapter/TypeListAdapter$1;
.super Ljava/lang/Object;
.source "TypeListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/adapter/TypeListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/adapter/TypeListAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/adapter/TypeListAdapter;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter$1;->this$0:Lcom/oneplus/tuner/adapter/TypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/tuner/adapter/TypeListAdapter$1;->this$0:Lcom/oneplus/tuner/adapter/TypeListAdapter;

    # invokes: Lcom/oneplus/tuner/adapter/TypeListAdapter;->preSubmitReport(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/oneplus/tuner/adapter/TypeListAdapter;->access$000(Lcom/oneplus/tuner/adapter/TypeListAdapter;Landroid/view/View;)V

    .line 59
    return-void
.end method
