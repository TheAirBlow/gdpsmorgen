.class public Lcom/unity3d/services/ads/adunit/AdUnitActivity;
.super Landroid/app/Activity;
.source "AdUnitActivity.java"


# static fields
.field public static final EXTRA_ACTIVITY_ID:Ljava/lang/String; = "activityId"

.field public static final EXTRA_DISPLAY_CUTOUT_MODE:Ljava/lang/String; = "displayCutoutMode"

.field public static final EXTRA_KEEP_SCREEN_ON:Ljava/lang/String; = "keepScreenOn"

.field public static final EXTRA_KEY_EVENT_LIST:Ljava/lang/String; = "keyEvents"

.field public static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final EXTRA_SYSTEM_UI_VISIBILITY:Ljava/lang/String; = "systemUiVisibility"

.field public static final EXTRA_VIEWS:Ljava/lang/String; = "views"


# instance fields
.field private _activityId:I

.field private _displayCutoutMode:I

.field _keepScreenOn:Z

.field private _keyEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected _layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

.field private _orientation:I

.field private _systemUiVisibility:I

.field private _viewHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _views:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    return-void
.end method

.method private createViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 520
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 521
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/services/core/webview/WebViewApp;->getConfiguration()Lcom/unity3d/services/core/configuration/Configuration;

    move-result-object v2

    .line 522
    .local v2, "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    invoke-virtual {v2}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfigurationList()[Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, "list":[Ljava/lang/String;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_1

    aget-object v6, v4, v8

    .line 525
    .local v6, "moduleName":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/unity3d/services/core/configuration/Configuration;->getModuleConfiguration(Ljava/lang/String;)Lcom/unity3d/services/core/configuration/IModuleConfiguration;

    move-result-object v5

    .line 526
    .local v5, "moduleConfig":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    instance-of v10, v5, Lcom/unity3d/services/ads/configuration/IAdsModuleConfiguration;

    if-eqz v10, :cond_0

    .line 527
    check-cast v5, Lcom/unity3d/services/ads/configuration/IAdsModuleConfiguration;

    .end local v5    # "moduleConfig":Lcom/unity3d/services/core/configuration/IModuleConfiguration;
    invoke-interface {v5}, Lcom/unity3d/services/ads/configuration/IAdsModuleConfiguration;->getAdUnitViewHandlers()Ljava/util/Map;

    move-result-object v1

    .line 528
    .local v1, "adUnitViewHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 529
    const/4 v7, 0x0

    .line 531
    .local v7, "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :try_start_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    .end local v1    # "adUnitViewHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    .end local v2    # "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    .end local v4    # "list":[Ljava/lang/String;
    .end local v6    # "moduleName":Ljava/lang/String;
    .end local v7    # "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :goto_1
    return-object v7

    .line 533
    .restart local v1    # "adUnitViewHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    .restart local v2    # "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    .restart local v4    # "list":[Ljava/lang/String;
    .restart local v6    # "moduleName":Ljava/lang/String;
    .restart local v7    # "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error creating view: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 524
    .end local v1    # "adUnitViewHandlers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 543
    .end local v2    # "configuration":Lcom/unity3d/services/core/configuration/Configuration;
    .end local v4    # "list":[Ljava/lang/String;
    .end local v6    # "moduleName":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private handleViewPlacement(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 401
    if-nez p1, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 403
    const-string v2, "Could not place view because it is null, finishing activity"

    invoke-static {v2}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 419
    :goto_0
    return v1

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, p1}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 419
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 411
    :cond_1
    invoke-static {p1}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 412
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 413
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 414
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 415
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 416
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v1, p1, v0}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method


# virtual methods
.method protected createLayout()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 510
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    if-eqz v0, :cond_0

    .line 517
    :goto_0
    return-void

    .line 514
    :cond_0
    new-instance v0, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-direct {v0, p0}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    .line 515
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Lcom/unity3d/services/core/misc/ViewUtilities;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public getLayout()Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    return-object v0
.end method

.method public getViewFrame(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "view"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    .line 335
    .local v0, "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    const/4 v3, 0x0

    .line 337
    .local v3, "targetView":Landroid/view/View;
    const-string v4, "adunit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v4}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 339
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v4, "x"

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v4, "y"

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v4, "width"

    iget-object v5, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v5}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string v4, "height"

    iget-object v5, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v5}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    return-object v1

    .line 346
    :cond_0
    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v3

    .line 350
    :cond_1
    if-eqz v3, :cond_2

    .line 351
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 352
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 353
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v4, "x"

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v4, "y"

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v4, "width"

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v4, "height"

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 360
    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    .line 487
    .local v0, "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :cond_0
    :goto_0
    return-object v0

    .line 476
    .end local v0    # "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    :cond_1
    invoke-direct {p0, p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->createViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    .line 478
    .restart local v0    # "viewHandler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    if-eqz v0, :cond_0

    .line 479
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 480
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getViews()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v3

    if-nez v3, :cond_0

    .line 61
    const-string v3, "Unity Ads web app is null, closing Unity Ads activity from onCreate"

    invoke-static {v3}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/unity3d/services/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    .line 67
    invoke-static {p0}, Lcom/unity3d/services/core/api/Intent;->setActiveActivity(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->createLayout()V

    .line 71
    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-static {v3}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    .line 72
    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    iget-object v5, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v5}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    if-nez p1, :cond_6

    .line 77
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "views"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 78
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "keyEvents"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "orientation"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "orientation"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "systemUiVisibility"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "systemUiVisibility"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "activityId"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "activityId"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    .line 89
    :cond_3
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "displayCutoutMode"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "displayCutoutMode"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    .line 93
    :cond_4
    sget-object v0, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_CREATE:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    .line 106
    .local v0, "event":Lcom/unity3d/services/ads/adunit/AdUnitEvent;
    :goto_1
    iget v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p0, v3}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setOrientation(I)V

    .line 107
    iget v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p0, v3}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setSystemUiVisibility(I)Z

    .line 108
    iget v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    invoke-virtual {p0, v3}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setLayoutInDisplayCutoutMode(I)V

    .line 110
    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 111
    iget-object v5, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_2
    if-ge v3, v6, :cond_7

    aget-object v2, v5, v3

    .line 112
    .local v2, "viewName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    .line 114
    .local v1, "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    if-eqz v1, :cond_5

    .line 115
    invoke-interface {v1, p0, p1}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onCreate(Lcom/unity3d/services/ads/adunit/AdUnitActivity;Landroid/os/Bundle;)V

    .line 111
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    .end local v0    # "event":Lcom/unity3d/services/ads/adunit/AdUnitEvent;
    .end local v1    # "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    .end local v2    # "viewName":Ljava/lang/String;
    :cond_6
    const-string v3, "views"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 96
    const-string v3, "orientation"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    .line 97
    const-string v3, "systemUiVisibility"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 98
    const-string v3, "keyEvents"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 99
    const-string v3, "keepScreenOn"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 100
    const-string v3, "activityId"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    .line 101
    const-string v3, "displayCutoutMode"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    .line 102
    iget-boolean v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p0, v3}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setKeepScreenOn(Z)Z

    .line 103
    sget-object v0, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_RESTORE:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    .restart local v0    # "event":Lcom/unity3d/services/ads/adunit/AdUnitEvent;
    goto :goto_1

    .line 120
    :cond_7
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v3

    sget-object v5, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v0, v6}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    .line 241
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 243
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onDestroy"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_DESTROY:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 253
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 254
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 255
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onDestroy(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    goto :goto_1

    .line 261
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    :cond_3
    invoke-static {}, Lcom/unity3d/services/ads/api/AdUnit;->getCurrentAdUnitActivityId()I

    move-result v1

    iget v2, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    if-ne v1, v2, :cond_4

    .line 262
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/unity3d/services/ads/api/AdUnit;->setAdUnitActivity(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    .line 265
    :cond_4
    invoke-static {p0}, Lcom/unity3d/services/core/api/Intent;->removeActiveActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    iget-object v2, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->KEY_DOWN:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v1, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x4

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 277
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onPause"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v1

    if-nez v1, :cond_4

    .line 211
    const-string v1, "Unity Ads web view is null, from onPause"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 216
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 217
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 219
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onPause(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    goto :goto_2

    .line 212
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unity3d/services/core/webview/WebViewApp;->getWebView()Lcom/unity3d/services/core/webview/WebView;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/services/core/misc/ViewUtilities;->removeViewFromParent(Landroid/view/View;)V

    goto :goto_1

    .line 224
    :cond_5
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_PAUSE:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 293
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 294
    .local v4, "permissionsArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 296
    .local v2, "grantResultsArray":Lorg/json/JSONArray;
    array-length v6, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v3, p2, v5

    .line 297
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    array-length v6, p3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget v1, p3, v5

    .line 301
    .local v1, "grantResult":I
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 300
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v1    # "grantResult":I
    :cond_1
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/services/ads/adunit/PermissionsEvent;->PERMISSIONS_RESULT:Lcom/unity3d/services/ads/adunit/PermissionsEvent;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .end local v2    # "grantResultsArray":Lorg/json/JSONArray;
    .end local v4    # "permissionsArray":Lorg/json/JSONArray;
    :goto_2
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v5

    sget-object v6, Lcom/unity3d/services/core/webview/WebViewEventCategory;->PERMISSIONS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v7, Lcom/unity3d/services/ads/adunit/PermissionsEvent;->PERMISSIONS_ERROR:Lcom/unity3d/services/ads/adunit/PermissionsEvent;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 178
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onResume"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setViews([Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onResume(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    goto :goto_1

    .line 195
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    :cond_3
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_RESUME:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 229
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 231
    const-string v0, "orientation"

    iget v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v0, "systemUiVisibility"

    iget v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 233
    const-string v0, "keyEvents"

    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 234
    const-string v0, "keepScreenOn"

    iget-boolean v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    const-string v0, "views"

    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 236
    const-string v0, "activityId"

    iget v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 131
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 132
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onStart"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 141
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onStart(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    goto :goto_1

    .line 147
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    :cond_3
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_START:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 7

    .prologue
    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-string v1, "Unity Ads web app is null, closing Unity Ads activity from onStop"

    invoke-static {v1}, Lcom/unity3d/services/core/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->finish()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_viewHandlers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->onStop(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)V

    goto :goto_1

    .line 170
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;>;"
    :cond_3
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v3, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_STOP:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 6
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 282
    if-eqz p1, :cond_0

    .line 283
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_FOCUS_GAINED:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 287
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 288
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/unity3d/services/core/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/services/core/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->ADUNIT:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/adunit/AdUnitEvent;->ON_FOCUS_LOST:Lcom/unity3d/services/ads/adunit/AdUnitEvent;

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_activityId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setKeepScreenOn(Z)Z
    .locals 2
    .param p1, "keepScreenOn"    # Z

    .prologue
    const/16 v1, 0x80

    .line 433
    iput-boolean p1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keepScreenOn:Z

    .line 436
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    .line 439
    :cond_0
    if-eqz p1, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 445
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1
.end method

.method public setKeyEventList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, "keyevents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_keyEventList:Ljava/util/ArrayList;

    .line 467
    return-void
.end method

.method public setLayoutInDisplayCutoutMode(I)V
    .locals 7
    .param p1, "flags"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 491
    iput p1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_displayCutoutMode:I

    .line 494
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 497
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "layoutInDisplayCutoutMode"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 498
    .local v1, "layoutInDisplayCutoutMode":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 505
    .end local v1    # "layoutInDisplayCutoutMode":Ljava/lang/reflect/Field;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 499
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v3, "Error setting layoutInDisplayCutoutMode"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 501
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 502
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "Error getting layoutInDisplayCutoutMode"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/unity3d/services/core/log/DeviceLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 427
    iput p1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_orientation:I

    .line 428
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->setRequestedOrientation(I)V

    .line 429
    return-void
.end method

.method public setSystemUiVisibility(I)Z
    .locals 4
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 449
    iput p1, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_systemUiVisibility:I

    .line 451
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 453
    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    const/4 v1, 0x1

    .line 462
    :cond_0
    :goto_0
    return v1

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Error while setting SystemUIVisibility"

    invoke-static {v2, v0}, Lcom/unity3d/services/core/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setViewFrame(Ljava/lang/String;IIII)V
    .locals 5
    .param p1, "view"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v4, 0x0

    .line 314
    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v0

    .line 315
    .local v0, "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    const/4 v2, 0x0

    .line 317
    .local v2, "targetView":Landroid/view/View;
    const-string v3, "adunit"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 318
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 319
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 320
    iget-object v3, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_layout:Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;

    invoke-virtual {v3, v1}, Lcom/unity3d/services/ads/adunit/AdUnitRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    .end local v1    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 327
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p2, p3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 329
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 322
    :cond_2
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public setViews([Ljava/lang/String;)V
    .locals 8
    .param p1, "views"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 366
    if-nez p1, :cond_1

    .line 367
    new-array v0, v5, [Ljava/lang/String;

    .line 371
    .local v0, "actualViews":[Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 373
    .local v2, "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    if-nez v6, :cond_0

    .line 374
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 377
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 378
    .local v3, "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 380
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 381
    .local v4, "view":Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    .line 382
    .local v1, "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    invoke-interface {v1}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->destroy()Z

    goto :goto_1

    .line 369
    .end local v0    # "actualViews":[Ljava/lang/String;
    .end local v1    # "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    .end local v2    # "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "view":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .restart local v0    # "actualViews":[Ljava/lang/String;
    goto :goto_0

    .line 385
    .restart local v2    # "newViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "removedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iput-object v0, p0, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->_views:[Ljava/lang/String;

    .line 387
    array-length v6, v0

    :goto_2
    if-ge v5, v6, :cond_5

    aget-object v4, v0, v5

    .line 388
    .restart local v4    # "view":Ljava/lang/String;
    if-nez v4, :cond_4

    .line 387
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 392
    :cond_4
    invoke-virtual {p0, v4}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->getViewHandler(Ljava/lang/String;)Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;

    move-result-object v1

    .line 393
    .restart local v1    # "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    invoke-interface {v1, p0}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->create(Lcom/unity3d/services/ads/adunit/AdUnitActivity;)Z

    .line 394
    invoke-interface {v1}, Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;->getView()Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/unity3d/services/ads/adunit/AdUnitActivity;->handleViewPlacement(Landroid/view/View;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 398
    .end local v1    # "handler":Lcom/unity3d/services/ads/adunit/IAdUnitViewHandler;
    .end local v4    # "view":Ljava/lang/String;
    :cond_5
    return-void
.end method
