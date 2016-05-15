.class public final enum Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;
.super Ljava/lang/Enum;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StateCheckTriggerEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

.field public static final enum SCTE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

.field public static final enum SCTE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

.field public static final enum SCTE_MAX:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

.field public static final enum SCTE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    const-string v1, "SCTE_ABSENT"

    invoke-direct {v0, v1, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 214
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    const-string v1, "SCTE_LOADED"

    invoke-direct {v0, v1, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 215
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    const-string v1, "SCTE_NOTREADY"

    invoke-direct {v0, v1, v4}, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 216
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    const-string v1, "SCTE_MAX"

    invoke-direct {v0, v1, v5}, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_MAX:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    .line 212
    const/4 v0, 0x4

    new-array v0, v0, [Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->SCTE_MAX:Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    aput-object v1, v0, v5

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->$VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

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
    .line 212
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    return-object v0
.end method

.method public static values()[Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->$VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    invoke-virtual {v0}, [Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/oneplus/telephony/OemDataCardSelectionController$StateCheckTriggerEvent;

    return-object v0
.end method
