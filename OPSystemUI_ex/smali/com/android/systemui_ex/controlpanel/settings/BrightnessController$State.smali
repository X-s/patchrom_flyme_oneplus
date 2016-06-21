.class final enum Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;
.super Ljava/lang/Enum;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

.field public static final enum STATE_ANIMATE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

.field public static final enum STATE_CLCIK:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

.field public static final enum STATE_RELEASE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

.field public static final enum STATE_SCROLL:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    const-string v1, "STATE_CLCIK"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_CLCIK:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    new-instance v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    const-string v1, "STATE_ANIMATE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_ANIMATE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    new-instance v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    const-string v1, "STATE_SCROLL"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_SCROLL:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    new-instance v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    const-string v1, "STATE_RELEASE"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_RELEASE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_CLCIK:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_ANIMATE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_SCROLL:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->STATE_RELEASE:Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->$VALUES:[Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->$VALUES:[Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    invoke-virtual {v0}, [Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui_ex/controlpanel/settings/BrightnessController$State;

    return-object v0
.end method
