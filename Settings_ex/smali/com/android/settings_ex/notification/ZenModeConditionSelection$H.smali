.class final Lcom/android/settings_ex/notification/ZenModeConditionSelection$H;
.super Landroid/os/Handler;
.source "ZenModeConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ZenModeConditionSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final CONDITIONS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeConditionSelection;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeConditionSelection$H;->this$0:Lcom/android/settings_ex/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/notification/ZenModeConditionSelection;Lcom/android/settings_ex/notification/ZenModeConditionSelection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/notification/ZenModeConditionSelection;
    .param p2, "x1"    # Lcom/android/settings_ex/notification/ZenModeConditionSelection$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ex/notification/ZenModeConditionSelection$H;-><init>(Lcom/android/settings_ex/notification/ZenModeConditionSelection;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 162
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/notification/ZenModeConditionSelection$H;->this$0:Lcom/android/settings_ex/notification/ZenModeConditionSelection;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast v0, [Landroid/service/notification/Condition;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/notification/ZenModeConditionSelection;->handleConditions([Landroid/service/notification/Condition;)V

    .line 163
    :cond_0
    return-void
.end method
