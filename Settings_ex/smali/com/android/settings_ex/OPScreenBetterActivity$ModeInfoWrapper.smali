.class public Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;
.super Ljava/lang/Object;
.source "OPScreenBetterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/OPScreenBetterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfoWrapper"
.end annotation


# instance fields
.field public mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field public modeID:I

.field public modename:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings_ex/OPScreenBetterActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OPScreenBetterActivity;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 1
    .param p2, "displayMode"    # Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->this$0:Lcom/android/settings_ex/OPScreenBetterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    iput-object p2, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 324
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 325
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modeID:I

    .line 326
    return-void
.end method


# virtual methods
.method public resetName()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/OPScreenBetterActivity$ModeInfoWrapper;->modename:Ljava/lang/String;

    return-object v0
.end method
