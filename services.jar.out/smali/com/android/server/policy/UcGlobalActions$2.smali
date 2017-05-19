.class Lcom/android/server/policy/UcGlobalActions$2;
.super Ljava/lang/Object;
.source "UcGlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/UcPowerViewContainer$OnAttachedToWindowListener;


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
    .line 267
    iput-object p1, p0, Lcom/android/server/policy/UcGlobalActions$2;->this$0:Lcom/android/server/policy/UcGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAttachedToWindowBack()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$2;->this$0:Lcom/android/server/policy/UcGlobalActions;

    # getter for: Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z
    invoke-static {v0}, Lcom/android/server/policy/UcGlobalActions;->access$300(Lcom/android/server/policy/UcGlobalActions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/server/policy/UcGlobalActions$2;->this$0:Lcom/android/server/policy/UcGlobalActions;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/UcGlobalActions;->mIsWindowAttached:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/UcGlobalActions;->access$302(Lcom/android/server/policy/UcGlobalActions;Z)Z

    .line 273
    :cond_0
    return-void
.end method
