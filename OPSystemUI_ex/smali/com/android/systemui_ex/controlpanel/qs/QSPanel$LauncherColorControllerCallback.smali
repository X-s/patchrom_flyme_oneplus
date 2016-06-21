.class Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui_ex/controlpanel/policy/LauncherColorController$LauncherColorChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherColorControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel;
    .param p2, "x1"    # Lcom/android/systemui_ex/controlpanel/qs/QSPanel$1;

    .prologue
    .line 418
    invoke-direct {p0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;-><init>(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    return-void
.end method


# virtual methods
.method public onLauncherContentColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 430
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTileViewStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$700(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    .line 433
    :cond_0
    return-void
.end method

.method public onLauncherMainColorChange(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 422
    invoke-static {}, Lcom/android/systemui_ex/util/Utils;->isBlackTheme()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->setBackgroundDrawableColor(I)V
    invoke-static {v0, p1}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$600(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/qs/QSPanel$LauncherColorControllerCallback;->this$0:Lcom/android/systemui_ex/controlpanel/qs/QSPanel;

    # invokes: Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->refreshAllTileViewStates()V
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/qs/QSPanel;->access$700(Lcom/android/systemui_ex/controlpanel/qs/QSPanel;)V

    .line 426
    :cond_0
    return-void
.end method
