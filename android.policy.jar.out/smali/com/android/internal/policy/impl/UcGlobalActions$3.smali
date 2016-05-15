.class Lcom/android/internal/policy/impl/UcGlobalActions$3;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UcGlobalActions;->createDialog()Lcom/android/internal/policy/impl/UcGlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/UcGlobalActions$3;->this$0:Lcom/android/internal/policy/impl/UcGlobalActions;

    # getter for: Lcom/android/internal/policy/impl/UcGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UcGlobalActions;->access$800(Lcom/android/internal/policy/impl/UcGlobalActions;)Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/policy/impl/UcGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/UcGlobalActions$Action;

    move-result-object v0

    .line 449
    .local v0, "action":Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    instance-of v1, v0, Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;

    if-eqz v1, :cond_0

    .line 450
    check-cast v0, Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;

    .end local v0    # "action":Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    invoke-interface {v0}, Lcom/android/internal/policy/impl/UcGlobalActions$LongPressAction;->onLongPress()Z

    move-result v1

    .line 452
    :goto_0
    return v1

    .restart local v0    # "action":Lcom/android/internal/policy/impl/UcGlobalActions$Action;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
