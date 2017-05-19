.class Lcom/android/server/policy/ui/OpGlobalActionEntry$3;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;->setActionText(I)V
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
    .line 111
    iput-object p1, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/policy/ui/OpGlobalActionEntry$3;->this$0:Lcom/android/server/policy/ui/OpGlobalActionEntry;

    # getter for: Lcom/android/server/policy/ui/OpGlobalActionEntry;->mOnGlobalActionClickListener:Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
    invoke-static {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry;->access$300(Lcom/android/server/policy/ui/OpGlobalActionEntry;)Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;->onMissClicked()V

    .line 115
    return-void
.end method
