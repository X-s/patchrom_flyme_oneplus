.class Lcom/android/server/policy/ui/OpGlobalActionEntry$2;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionIcon(Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ui/OpGlobalActionEntry;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;
    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$000(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->SHOWING:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mState:Lcom/android/server/policy/OpGlobalActions$ActionState;
    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$000(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$ActionState;

    move-result-object v0

    sget-object v1, Lcom/android/server/policy/OpGlobalActions$ActionState;->ADVANCED_SHOWN:Lcom/android/server/policy/OpGlobalActions$ActionState;

    if-ne v0, v1, :cond_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$102(Lcom/android/server/policy/ui/OpGlobalActionEntry;Z)Z

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mSelected:Z
    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$100(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$300(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$2;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mAction:Lcom/android/server/policy/OpGlobalActions$Action;
    invoke-static {v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$200(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/OpGlobalActions$Action;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;->onLongPressed(Lcom/android/server/policy/OpGlobalActions$Action;)Z

    move-result v0

    .line 101
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
