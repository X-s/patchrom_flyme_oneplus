.class Lcom/android/server/policy/UcGlobalActions$3;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/UcPowerViewContainer$OnBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/UcGlobalActions;->initViewEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/UcGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/UcGlobalActions;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$3;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBack()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$3;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # invokes: Lcom/android/server/policy/UcGlobalActions;->detach()V
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$100(Lcom/android/server/policy/UcGlobalActions;)V

    .line 280
    return-void
.end method
