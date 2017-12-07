.class final enum Lcom/oneplus/injector/ViewInjector$View$Element;
.super Ljava/lang/Enum;
.source "ViewInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/injector/ViewInjector$View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Element"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/injector/ViewInjector$View$Element;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

.field public static final enum WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;


# instance fields
.field private mName:Ljava/lang/String;

.field private mPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/16 v8, 0xf

    const/16 v7, 0xc

    const/16 v6, 0xe

    const/4 v5, 0x5

    .line 152
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "SCROLL"

    .line 163
    const-string/jumbo v2, "AbsListView.trackMotionScroll"

    .line 152
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 163
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 165
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "QQSCROLL"

    .line 175
    const-string/jumbo v2, "tencent.widget.AbsListView.onTouchEvent"

    .line 165
    const/4 v3, 0x1

    .line 175
    const/4 v4, 0x7

    .line 165
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 175
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 177
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN12"

    .line 192
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 177
    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v7, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 192
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 194
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN14"

    .line 211
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 194
    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 211
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 213
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMAWAKEN15"

    .line 231
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 213
    invoke-direct {v0, v1, v9, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 231
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 233
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "OVERSCROLL"

    .line 243
    const-string/jumbo v2, "AbsListView.onOverScrolled"

    .line 233
    invoke-direct {v0, v1, v5, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 243
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 245
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "CONTENTSCROLL"

    .line 255
    const-string/jumbo v2, "ContentView.onScrollChanged"

    .line 245
    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v9, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 255
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 257
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE9"

    .line 269
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 257
    const/4 v3, 0x7

    .line 269
    const/16 v4, 0x9

    .line 257
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 269
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 271
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE12"

    .line 286
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 271
    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v7, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 286
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 288
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE14"

    .line 305
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 288
    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 305
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 307
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "MMCHANGE15"

    .line 325
    const-string/jumbo v2, "tencent.mm.ui.base.MMPullDownView.dispatchTouchEvent"

    .line 307
    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v8, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 325
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 327
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "BROWSERSCROLL"

    .line 344
    const-string/jumbo v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    .line 327
    const/16 v3, 0xb

    invoke-direct {v0, v1, v3, v6, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 344
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 346
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "QZONESCROLL"

    .line 357
    const-string/jumbo v2, "qzone.widget.QZonePullToRefreshListView.onScrollChanged"

    const/16 v3, 0x8

    .line 346
    invoke-direct {v0, v1, v7, v3, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 357
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 359
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "WEBSCROLL"

    .line 378
    const-string/jumbo v2, "WebView$PrivateAccess.overScrollBy"

    .line 359
    const/16 v3, 0xd

    .line 378
    const/16 v4, 0x10

    .line 359
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 378
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 380
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "LISTOVERSCROLL"

    .line 392
    const-string/jumbo v2, "AbsListView.onTouchEvent"

    const/4 v3, 0x6

    .line 380
    invoke-direct {v0, v1, v6, v3, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 392
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 394
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "WEBOVERSCROLL"

    .line 402
    const-string/jumbo v2, "WebView$PrivateAccess.overScrollBy"

    .line 394
    invoke-direct {v0, v1, v8, v5, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 402
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 404
    new-instance v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    const-string/jumbo v1, "BROWSEROVERSCROLL"

    .line 418
    const-string/jumbo v2, "oppo.browser.navigation.widget.NavigationView.dispatchTouchEvent"

    .line 404
    const/16 v3, 0x10

    .line 418
    const/16 v4, 0xb

    .line 404
    invoke-direct {v0, v1, v3, v4, v2}, Lcom/oneplus/injector/ViewInjector$View$Element;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 418
    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    .line 150
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/oneplus/injector/ViewInjector$View$Element;

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->SCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QQSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN12:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN14:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMAWAKEN15:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v9

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->OVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->CONTENTSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE9:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE12:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE14:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->MMCHANGE15:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->QZONESCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v7

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->LISTOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->WEBOVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    aput-object v1, v0, v8

    sget-object v1, Lcom/oneplus/injector/ViewInjector$View$Element;->BROWSEROVERSCROLL:Lcom/oneplus/injector/ViewInjector$View$Element;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p3, "position"    # I
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    .line 423
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    .line 426
    iput p3, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    .line 427
    iput-object p4, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 150
    const-class v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/injector/ViewInjector$View$Element;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/oneplus/injector/ViewInjector$View$Element;->$VALUES:[Lcom/oneplus/injector/ViewInjector$View$Element;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/injector/ViewInjector$View$Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/oneplus/injector/ViewInjector$View$Element;->mPosition:I

    return v0
.end method
