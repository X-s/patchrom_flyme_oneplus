.class public final enum Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
.super Ljava/lang/Enum;
.source "OemDataCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemDataCardSelectionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OemCardState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

.field public static final enum CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_ABSENT"

    invoke-direct {v0, v1, v3}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 63
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_LOADED"

    invoke-direct {v0, v1, v4}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 64
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_NOTREADY"

    invoke-direct {v0, v1, v5}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 65
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 66
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_READY"

    invoke-direct {v0, v1, v7}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 67
    new-instance v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    const-string v1, "CARDSTATE_LOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    .line 61
    const/4 v0, 0x6

    new-array v0, v0, [Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_ABSENT:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v1, v0, v3

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOADED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v1, v0, v4

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_NOTREADY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v1, v0, v5

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_UNKNOWN:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v1, v0, v6

    sget-object v1, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_READY:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->CARDSTATE_LOCKED:Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    aput-object v2, v0, v1

    sput-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->$VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    return-object v0
.end method

.method public static values()[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->$VALUES:[Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    invoke-virtual {v0}, [Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/oneplus/telephony/OemDataCardSelectionController$OemCardState;

    return-object v0
.end method
