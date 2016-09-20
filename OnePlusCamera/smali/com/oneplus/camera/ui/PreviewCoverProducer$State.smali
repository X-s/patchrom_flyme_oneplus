.class public final enum Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
.super Ljava/lang/Enum;
.source "PreviewCoverProducer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PreviewCoverProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/PreviewCoverProducer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

.field public static final enum STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 27
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "READY_TO_IN_ANIMATION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 28
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "IN_ANIMATION"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 29
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "READY_TO_OUT_ANIMATION"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 30
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "OUT_ANIMATION"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 31
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    .line 24
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->PREPARING:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->IN_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->READY_TO_OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->OUT_ANIMATION:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->STOPPED:Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->$VALUES:[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->$VALUES:[Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    invoke-virtual {v0}, [Lcom/oneplus/camera/ui/PreviewCoverProducer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/camera/ui/PreviewCoverProducer$State;

    return-object v0
.end method
