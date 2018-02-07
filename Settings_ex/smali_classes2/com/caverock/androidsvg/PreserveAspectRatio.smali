.class public Lcom/caverock/androidsvg/PreserveAspectRatio;
.super Ljava/lang/Object;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;,
        Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final END:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;


# instance fields
.field private alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field private scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v0, v2, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 47
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 55
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 63
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 71
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->END:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 79
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 87
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 96
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 105
    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    .line 163
    iput-object p2, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    .line 164
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    if-eq p0, p1, :cond_0

    .line 192
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 196
    check-cast p1, Lcom/caverock/androidsvg/PreserveAspectRatio;

    .line 197
    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    iget-object v1, p1, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v0, v1, :cond_3

    .line 199
    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    iget-object v1, p1, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v0, v1, :cond_4

    .line 201
    return v3

    .line 191
    :cond_0
    return v3

    .line 193
    :cond_1
    return v2

    .line 195
    :cond_2
    return v2

    .line 198
    :cond_3
    return v2

    .line 200
    :cond_4
    return v2
.end method

.method public getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    return-object v0
.end method

.method public getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method
