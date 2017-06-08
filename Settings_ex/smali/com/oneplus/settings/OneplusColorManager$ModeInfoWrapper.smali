.class public Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;
.super Ljava/lang/Object;
.source "OneplusColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OneplusColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModeInfoWrapper"
.end annotation


# instance fields
.field public mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

.field public modeID:I

.field public modename:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/settings/OneplusColorManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OneplusColorManager;Lcom/qti/snapdragon/sdk/display/ModeInfo;)V
    .locals 1
    .param p2, "displayMode"    # Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->this$0:Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    .line 107
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 108
    invoke-virtual {p2}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modeID:I

    .line 109
    return-void
.end method


# virtual methods
.method public resetName()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->mode:Lcom/qti/snapdragon/sdk/display/ModeInfo;

    invoke-virtual {v0}, Lcom/qti/snapdragon/sdk/display/ModeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modename:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager$ModeInfoWrapper;->modename:Ljava/lang/String;

    return-object v0
.end method
